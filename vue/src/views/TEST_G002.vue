<template>
    <div class="row">
        <div class="col">{{ message }}</div>
    </div>
    <div class="row pt-3">
        <div class="col">
            {{ result }}
        </div>
    </div>
    <div class="row pt-3">
        <div class="col">
            <button type="button" class="btn btn-primary w-50" @click="getHoge">登録</button>
        </div>
    </div>
    <div class="row pt-3">
        <div class="col">
            <button type="button" class="btn btn-outline-primary w-50" @click="this.$router.push('/G001')">戻る</button>
        </div>
    </div>
</template>

<script>
import axios from "axios";
export default {
    name: "TEST_G002",

    data() {
        return {
            message: null,
            text: "hoge",
            result: "",
        };
    },
    async mounted() {
        const type = this.$route.query.planType;
        console.log(type);
        if (type == 1) {
            this.message = "フリープランで登録します";
            this.url = "/get_hoge";
        } else {
            this.message = "有料プランで登録します";
            this.url = "/admin/get_hoge";
        }
        
    },
    methods: {
        async getHoge() {
            const res = await axios.get(this.url, {
                params: { text: this.text },
            });
            if (res) {
                this.result = res.data.result;
            }
        },
    },
};
</script>
