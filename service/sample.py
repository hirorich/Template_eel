import eel
from common import app_property
from common.error import error_id
from common.utility import desktop_notify_utils, log_utils, message_utils

@eel.expose
def request(request):
    try:
        # 入力パラメータを指定
        target_data = request['test']
        
        # 処理実行
        eel.response_success('成功')
        desktop_notify_utils.notify(app_property.app_name, message_utils.get_message(error_id.I0000000))
    except Exception as e:
        message = log_utils.write_exception(e)
        eel.response_error('失敗')
        desktop_notify_utils.notify(app_property.app_name, message_utils.get_message(error_id.E0000000))
