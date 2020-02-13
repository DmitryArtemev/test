<?php

use Slim\Http\Request;
use Slim\Http\Response;

$app->post('/reguser', function ($request, $response, $args)
{
	$input = $request->getParsedBody();

	$sql = "SELECT * FROM users WHERE email = :email";
	$sth = $this->db->prepare($sql);
	$sth->bindParam("email", $input['email']);
	$sth->execute();
	if ( $sth->fetchObject() == null ) {
		$ins = "INSERT INTO users (name, email, pass) VALUES (:name, :email, :pass)";

		$inss = $this->db->prepare($ins);

		$inss->bindParam("name", $input['name']);
		$inss->bindParam("email", $input['email']);
		$inss->bindParam("pass", password_hash($input['pass'], PASSWORD_BCRYPT));

		$inss->execute();
		return $this->response->withJson($input['name']);
	} else {
		return $this->response->write(0);
	}

});

$app->post('/loguser', function ($request, $response, $args)
{
	$input = $request->getParsedBody();
	$sql = "SELECT * FROM users WHERE email = :email";

	$sth = $this->db->prepare($sql);

	$sth->bindParam("email", $input['email']);

	$sth->execute();
	$res = $sth->fetchObject();
	if (password_verify($input['pass'], $res->pass)) {
			return $this->response->withJson($res);
	}
});
