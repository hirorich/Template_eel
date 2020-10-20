// 定義したコンポーネントを登録
const vm = new Vue({
    el: '#sample-components',
    data: function() {
        return {
            result: ""
        }
    },
    template: `
        <div>
            <button class="btn btn-primary" v-on:click="call_eel_success()">正常系</button>
            <button class="btn btn-primary" v-on:click="call_eel_error()">異常系</button>
            <button class="btn btn-primary" v-on:click="reset()">リセット</button>
            <div v-cloak>{{result}}</div>
        </div>
    `,
    methods: {
        call_eel_success: function() {
            let request = {test: "TEST"};
            eel.request(request);
        },
        call_eel_error: function() {
            let request = {};
            eel.request(request);
        },
        callback_eel: function(response) {
            this.result = response;
        },
        reset: function() {
            this.result = "";
        }
    }
});

// 処理結果
eel.expose(response_success)
function response_success(response) {
    vm.callback_eel(response);
}
eel.expose(response_error)
function response_error(response) {
    vm.callback_eel(response);
}
