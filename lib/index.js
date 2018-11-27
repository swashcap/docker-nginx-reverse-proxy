"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
var koa_1 = __importDefault(require("koa"));
var app = new koa_1.default();
var PORT = 4000;
app.use(function (ctx) {
    ctx.body = "Hello, world!\n";
});
app.listen(PORT, function () {
    console.log("Server listening on localhost:" + PORT);
});
