# ==================================================
# メッセージID
# ==================================================

class _Const:
    class ConstError(TypeError):
        pass
    
    # メッセージID
    E0000000 = 'E0000000'
    I0000000 = 'I0000000'
    W0000000 = 'W0000000'
    
    # 新規定数の追加・変更を禁止
    def __setattr__(self, name, value):
        raise self.ConstError('定数の追加・変更はできません (%s)' % name)

import sys
sys.modules[__name__] = _Const()
