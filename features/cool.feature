# language: zh-CN

功能: 这是一个实验

  场景大纲: test convert

    当对Cool.convert输入<input>
    那么输出<result>

    例子:
      | input   | result |
      | [1]     | 1      |
      | [101]   | 101    |
      | [10]    | 1      |

  场景大纲: test execute
    假如有一个Cool类的实例，初始化数据为<input>
    当对这个实例调用execute方法，参数
    那么此方法返回<result>

    例子:
      | input      | result |
      | [24,10]    | 34     |
      | [4358,754] | 1998   |
      | [305,794]  | 1      |
      | [100,100]  | 2      |



  
