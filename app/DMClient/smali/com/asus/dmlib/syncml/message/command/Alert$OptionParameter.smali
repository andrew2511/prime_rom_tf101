.class Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;
.super Ljava/lang/Object;
.source "Alert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dmlib/syncml/message/command/Alert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionParameter"
.end annotation


# instance fields
.field dResponse:Ljava/lang/String;

.field echoType:Lcom/asus/dmlib/vdm/MmiInputQuery$EchoType;

.field et:Ljava/lang/String;

.field inputType:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

.field it:Ljava/lang/String;

.field maxDT:I

.field maxLen:I

.field minDT:I

.field final synthetic this$0:Lcom/asus/dmlib/syncml/message/command/Alert;


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/syncml/message/command/Alert;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter "parameters"

    .prologue
    const/4 v8, 0x6

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v4, 0x0

    .line 128
    iput-object p1, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->this$0:Lcom/asus/dmlib/syncml/message/command/Alert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput v4, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->minDT:I

    .line 120
    iput v4, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->maxDT:I

    .line 121
    iput v4, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->maxLen:I

    .line 122
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->it:Ljava/lang/String;

    .line 123
    sget-object v4, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->UNDEFINED:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    iput-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->inputType:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    .line 124
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->et:Ljava/lang/String;

    .line 125
    sget-object v4, Lcom/asus/dmlib/vdm/MmiInputQuery$EchoType;->UNDEFINED:Lcom/asus/dmlib/vdm/MmiInputQuery$EchoType;

    iput-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->echoType:Lcom/asus/dmlib/vdm/MmiInputQuery$EchoType;

    .line 126
    iput-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->dResponse:Ljava/lang/String;

    .line 130
    if-eqz p2, :cond_c

    .line 131
    const-string v4, "&"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, optParameters:[Ljava/lang/String;
    array-length v1, v2

    .line 134
    .local v1, optParaLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_c

    .line 136
    aget-object v3, v2, v0

    .line 137
    .local v3, tempOptParameter:Ljava/lang/String;
    const-string v4, "MINDT="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->minDT:I

    .line 134
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_1
    const-string v4, "MAXDT="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 140
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->maxDT:I

    goto :goto_1

    .line 141
    :cond_2
    const-string v4, "MAXLEN="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 142
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->maxLen:I

    goto :goto_1

    .line 143
    :cond_3
    const-string v4, "IT="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 144
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->it:Ljava/lang/String;

    .line 145
    const-string v4, "A"

    iget-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->it:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 146
    sget-object v4, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->ALPHANUMERIC:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    iput-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->inputType:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    goto :goto_1

    .line 147
    :cond_4
    const-string v4, "N"

    iget-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->it:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 148
    sget-object v4, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->NUMERIC:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    iput-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->inputType:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    goto :goto_1

    .line 149
    :cond_5
    const-string v4, "D"

    iget-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->it:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 150
    sget-object v4, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->DATE:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    iput-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->inputType:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    goto :goto_1

    .line 151
    :cond_6
    const-string v4, "T"

    iget-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->it:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 152
    sget-object v4, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->TIME:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    iput-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->inputType:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    goto :goto_1

    .line 153
    :cond_7
    const-string v4, "P"

    iget-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->it:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 154
    sget-object v4, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->PHONE:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    iput-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->inputType:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    goto/16 :goto_1

    .line 155
    :cond_8
    const-string v4, "I"

    iget-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->it:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    sget-object v4, Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;->IP_ADDRESS:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    iput-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->inputType:Lcom/asus/dmlib/vdm/MmiInputQuery$InputType;

    goto/16 :goto_1

    .line 158
    :cond_9
    const-string v4, "ET="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 159
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->et:Ljava/lang/String;

    .line 160
    const-string v4, "T"

    iget-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->et:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 161
    sget-object v4, Lcom/asus/dmlib/vdm/MmiInputQuery$EchoType;->PLAIN:Lcom/asus/dmlib/vdm/MmiInputQuery$EchoType;

    iput-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->echoType:Lcom/asus/dmlib/vdm/MmiInputQuery$EchoType;

    goto/16 :goto_1

    .line 162
    :cond_a
    const-string v4, "P"

    iget-object v5, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->et:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    sget-object v4, Lcom/asus/dmlib/vdm/MmiInputQuery$EchoType;->MASKED:Lcom/asus/dmlib/vdm/MmiInputQuery$EchoType;

    iput-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->echoType:Lcom/asus/dmlib/vdm/MmiInputQuery$EchoType;

    goto/16 :goto_1

    .line 165
    :cond_b
    const-string v4, "DR="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->dResponse:Ljava/lang/String;

    .line 169
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->dResponse:Ljava/lang/String;

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 170
    iget-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->dResponse:Ljava/lang/String;

    const-string v5, "\\+"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/asus/dmlib/syncml/message/command/Alert$OptionParameter;->dResponse:Ljava/lang/String;

    goto/16 :goto_1

    .line 175
    .end local v0           #i:I
    .end local v1           #optParaLength:I
    .end local v2           #optParameters:[Ljava/lang/String;
    .end local v3           #tempOptParameter:Ljava/lang/String;
    :cond_c
    return-void
.end method
