# mode: run
# tag: METH_FASTCALL

import struct
from collections import deque


def deque_methods(v):
    """
    >>> deque_methods(2)
    [1, 2, 3, 4]
    """
    d = deque([1, 3, 4])
    assert list(d) == [1,3,4]
    d.insert(1, v)
    assert list(d) == [1,2,3,4]
    d.rotate(len(d) // 2)
    assert list(d) == [3,4,1,2]
    d.rotate(len(d) // 2)
    assert list(d) == [1,2,3,4]

    return list(d)


def struct_methods(v):
    """
    >>> i, lf = struct_methods(2)
    >>> struct.unpack('i', i)
    (2,)
    >>> struct.unpack('lf', lf)
    (2, 4.0)
    """
    return [
        struct.pack('i', v),
        struct.pack('lf', v, v*2),
    ]
