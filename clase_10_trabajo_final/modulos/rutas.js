	db   		    = 	require('./database'),
	date 			= 	new Date(),
	fechaActual 	= 	(date.getMonth() + 1) + '/' + date.getDate() + '/' +  date.getFullYear();
    db.conectaDatabase();

//Crear un token único relacionado al ID de la tarea...
var getQuestions =  function(req, res)
{
		db.queryMysql("select numpregunta, pregunta, opcion1, opcion2, opcion3, opcion4 from preguntas order by rand();", function(err, data){
			if (err) throw err;
			res.json(data);
		});
};

var isValid =  function (req, res)
{
	db.queryMysql("select correcta from preguntas where numpregunta = " + req.body.numPregunta, function(err, data){
		if (err) throw err;
		res.json({
					respuestaCorrecta : data[0].correcta,
					correcto	: data[0].correcta === req.body.respuesta ? true : false
		});
	});
};

var notFound404 = function(req, res)
{
	res.status(404).send("Página no encontrada :( en el momento");
};

module.exports.getQuestions = getQuestions;
module.exports.isValid = isValid;
module.exports.notFound404 = notFound404;
