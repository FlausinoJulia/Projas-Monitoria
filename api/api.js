const express = require('express');
const app = express()
app.use(express.json())
let arrayData = [
    {
        "id": 0,
        "nome":"Bruno Borges",
        "foto":"https://i.ibb.co/L00TgTs/Whats-App-Image-2023-05-12-at-10-21-08-1.jpg",
        "email":"cc21814@g.unicamp.br",
        "horarios":"Terça: 10h45 as 11h30 \r\nQuarta: 08h15 as 10h45 e 13h30 as 17h30 \r\nSexta: 10h45 as 11h30 e 13h30 as 15h00 \r\nSabado: 10h00 as 12h15"
    },
    {   "id": 1,
        "nome":"Bruno Concli",
        "foto":"https://i.ibb.co/BLCbmdJ/Whats-App-Image-2023-05-12-at-10-20-45.jpg",
        "email":"cc22303@g.unicamp.br",
        "horarios":"Segunda: 16h00 as 19h00 \r\nTerça: 14h15 as 15h00 e 16h45 as 18h15 \r\nQuinta: 18h15 as 19h45 \r\nSexta: 16h46 as 18h15 \r\nSabado: 07h30 as 11h30"
    },
    {   "id": 2,
        "nome":"Isa",
        "foto":"https://i.ibb.co/B2fzmZb/Whats-App-Image-2023-05-12-at-10-21-34.jpg",
        "email":"cc20000@g.unicamp.br",
        "horarios":"Segunda: 20h30 as 21h15 \r\nTerça: 19h00 as 23h00 \r\nQuarta: 17h30 as 19h00"
    },
    {   "id": 3,
        "nome":"João Pedro",
        "foto":"https://i.ibb.co/wzJBncj/Whats-App-Image-2023-05-12-at-10-22-27.jpg",
        "email":"cc21687@g.unicamp.br",
        "horarios":"Segunda: 08h15 as 09h45 \r\nQuarta: 10h00 as 15h00 \r\nQuinta: 10h00 as 12h15 \r\nSexta: 11h30 as 12h15 e 15h00 as 15h45 e 19h00 as 21h15"
    },
    {
        "id": 4,
        "nome":"Miguel",
        "foto":"https://i.ibb.co/d2myxsK/Whats-App-Image-2023-05-12-at-10-20-18.jpg",
        "email":"cc22327@g.unicamp.br",
        "horarios":"Segunda: 13h30 as 14h15 e 16h00 as 18h15 \r\nTerça: 18h15 as 19h00 \r\nQuarta: 18h15 as 19h00 \r\nQuinta: 13h10 as 14h15 \r\nSexta: 13h30 as 14h15 e 16h45 as 17h30 \r\nSabado: 07h30 as 12h15"
    },
	];

    app.get('/api/monitor/get', function (req, res) {
        setTimeout(function(){
        res.header('Access-Control-Allow-Origin', '*')
        .send(200,arrayData)
    }, 3000);
    });


    app.get('/api/monitor/getNome/:nome', (req, res) => {
        const nome = req.params.nome;
        const item = data.find(item => item.nome == nome);
        return res.json(item);
    });

    app.post('/api/monitor/post', (req, res) => {
        const id = req.body.id;
        const nome = req.body.nome;
        const email = req.body.email;
        const horarios = req.body.horarios;
        const foto = req.body.foto;
        return res.json({id,nome,email,horarios,foto});
    });

    app.put('/api/monitor/put/:id', (req, res) => {
        const id = req.params.id;
        const item = data.find(item => item.id == id);
        item.nome = req.body.nome;
        item.email = req.body.email;
        item.horarios = req.body.horarios;
        item.foto = req.body.foto;
        return res.json(item);
    });

    app.get('/api/monitor/delete/:id', (req, res) => {
        const id = req.params.id;
        const item = data.find(item => item.id == id);
        return res.json(item);
    });

    app.listen(3000);
    console.log('A API está no ar');