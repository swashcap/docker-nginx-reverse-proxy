import Koa from "koa";

const app = new Koa();
const PORT = 4000;

app.use(ctx => {
  ctx.body = "Hello, world!\n";
});

app.listen(PORT, () => {
  console.log(`Server listening on localhost:${PORT}`);
});
