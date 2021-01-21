#! requires PinArray

add-class class SMDConn_3pin extends PinArray
    @rev_SMDConn_3pin = 1
    (data, overrides) ->
        super data, overrides `based-on` do
            pad:
                width: 0.9
                height: 3.2
            cols:
                count: 3
                interval: 2.54mm
            border: "default"


add-class class SMDConn_4pin extends SMDConn_3pin
    (data, overrides) ->
        super data, overrides `based-on` do
            cols:
                count: 4

add-class class SMDConn_5pin extends SMDConn_3pin
    (data, overrides) ->
        super data, overrides `based-on` do
            cols:
                count: 5

add-class class SMDConn_2pin extends SMDConn_3pin
    (data, overrides) ->
        super data, overrides `based-on` do
            cols:
                count: 2

if __main__
    new SMDConn_5pin




