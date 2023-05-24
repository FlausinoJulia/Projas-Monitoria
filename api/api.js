const express = require('express');
const app = express()
app.use(express.json())
let arrayData = [
    {
        "id": 0,
        "nome":"Bruno Borges",
        "foto":"https://i.ibb.co/L00TgTs/Whats-App-Image-2023-05-12-at-10-21-08-1.jpg",
        "email":"cc21814@g.unicamp.br",
        "horarios":"Terça: das 10h45 às 11h30 \r\nQuarta: das 08h15 às 10h45 e das 13h30 às 17h30 \r\nSexta: das 10h45 às 11h30 e das 13h30 às 15h00 \r\nSábado: das 10h00 às 12h15",
        "curso":"PD22"
    },
    {   "id": 1,
        "nome":"Bruno Concli",
        "foto":"https://i.ibb.co/BLCbmdJ/Whats-App-Image-2023-05-12-at-10-20-45.jpg",
        "email":"cc22303@g.unicamp.br",
        "horarios":"Segunda: das 16h00 às 19h00 \r\nTerça: das 14h15 às 15h00 e das 16h45 às 18h15 \r\nQuinta: das 18h15 às 19h45 \r\nSexta: das 16h46 às 18h15 \r\nSábado: das 07h30 às 11h30",
        "curso":"DSVESP22"
    },
    {   "id": 2,
        "nome":"Isa",
        "foto":"https://i.ibb.co/B2fzmZb/Whats-App-Image-2023-05-12-at-10-21-34.jpg",
        "email":"cc20000@g.unicamp.br",
        "horarios":"Segunda: das 20h30 às 21h15 \r\nTerça: das 19h00 às 23h00 \r\nQuarta: das 17h30 às 19h00",
        "curso":"DSNOT20"
    },
    {   "id": 3,
        "nome":"João Pedro",
        "foto":"https://i.ibb.co/wzJBncj/Whats-App-Image-2023-05-12-at-10-22-27.jpg",
        "email":"cc21687@g.unicamp.br",
        "horarios":"Segunda: das 08h15 às 09h45 \r\nQuarta: das 10h00 às 15h00 \r\nQuinta: das 10h00 às 12h15 \r\nSexta: das 11h30 às 12h15, das 15h00 às 15h45 e das 19h00 às 21h15",
        "curso":"PD21"
    },
    {
        "id": 4,
        "nome":"Miguel",
        "foto":"https://i.ibb.co/d2myxsK/Whats-App-Image-2023-05-12-at-10-20-18.jpg",
        "email":"cc22327@g.unicamp.br",
        "horarios":"Segunda: das 13h30 às 14h15 e das 16h00 às 18h15 \r\nTerça: das 18h15 às 19h00 \r\nQuarta: das 18h15 às 19h00 \r\nQuinta: das 13h10 às 14h15 \r\nSexta: das 13h30 às 14h15, das 16h45 às 17h30 \r\nSábado: das 07h30 às 12h15",
        "curso":"DSVESP22"
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