<template>
    <div class="row">
        <div class="col">TEST_G001</div>
    </div>
    <HelloWorld msg="ruby-vue-sinatra-rack-temp"></HelloWorld>
    <div class="row">
        <div class="col">
            <button type="button" class="btn btn-primary" @click="this.$router.push('/G002')">Primary</button>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <router-link :to="{ path: '/G002'}" replace>G002</router-link>
            <p>https://router.vuejs.org/guide/</p>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-2">
            <button type="button" class="btn btn-primary" @click="getHoge">実行</button>
        </div>
        <div class="col-2">
            <button type="button" class="btn btn-primary" @click="getAdminHoge">管理</button>
        </div>
    </div>
    <div class="row">
        <div class="col">
            {{ result }}
        </div>
    </div>
</template>

<script>
import axios from "axios";
import HelloWorld from "@/components/HelloWorld.vue"
export default {
    name: "TEST_G001",
    components: { HelloWorld },

    data() {
        return {
            text: "hogehoge",
            result: "",
        };
    },
    async mounted() {
    },
    methods: {
        async getHoge() {
            const res = await axios.get("/get_hoge", {
                params: { text: this.text },
            });
            if (res) {
                this.result = res.data.result;
            }
        },        
        async getAdminHoge() {
            const res = await axios.post("/admin/get_hoge", {
                text: `${this.text}-admin`,
            });
            if (res) {
                this.result = res.data.result;
            }
        },        
    },
};
</script>
