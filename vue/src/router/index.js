import { createRouter, createWebHistory } from "vue-router";

import G001 from "@/views/TEST_G001";
import G002 from "@/views/TEST_G002";

const routes = [
    {
        path: "/",
        redirect: "/G001",
    },

    {
        path: "/G001",
        name: "G001",
        component: G001,
    },

    {
        path: "/G002",
        name: "G002",
        component: G002,
    },
]

const router = new createRouter({
    history: createWebHistory(process.env.BASE_URL),
    routes,
});

export default router;