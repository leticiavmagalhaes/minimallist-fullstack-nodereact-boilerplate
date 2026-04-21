import { Router } from 'express';

const routes = Router();

routes.get('/api', (req, res) => {
    res.json({
        status: 'ok',
        name: 'Node Boilerplate',
        timestamp: new Date().toISOString()
    });
});

routes.get('/api/hello', (req, res) => {
    res.json({
        message: 'Hello World'
    });
});

export default routes;
