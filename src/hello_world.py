import numpy as np
import pandas as pd
from  typing import Union

def hello():
    print("Hello!")

class Car:
    def init(self, h, w):
        self.h = h
        self.w = w

def run(car: Car):
    pass


def func(a: pd.DataFrame, b: np.ndarray):
    return  a

def sum_a_b(a: int, b: Union[int, float]) -> int:
    """
    Суммирование аргументов
    :param a:
    :param b:
    :return:
    """
    return a + b

if __name__ ==  "__main__":
    hello()
