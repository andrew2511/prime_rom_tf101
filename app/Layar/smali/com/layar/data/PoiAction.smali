.class public Lcom/layar/data/PoiAction;
.super Ljava/lang/Object;
.source "PoiAction.java"


# static fields
.field public static final ASYNC_ACTION:Ljava/lang/String; = "application/vnd.layar.async"

.field public static final AUDIO_ACTION:Ljava/lang/String; = "audio"

.field public static final HTTP_ACTION:Ljava/lang/String; = "text"

.field public static final ICONS:[I = null

.field public static final INFO_ACTION:Ljava/lang/String; = "info"

.field public static final INTERNAL_ACTION:Ljava/lang/String; = "application/vnd.layar.internal"

.field public static final LOCK_ACTION:Ljava/lang/String; = "lock"

.field public static final MORE_ACTION:Ljava/lang/String; = "more"

.field public static final PLAIN_ACTION:Ljava/lang/String; = "text/plain"

.field private static final TAG:Ljava/lang/String; = null

.field public static final VIDEO_ACTION:Ljava/lang/String; = "video"


# instance fields
.field public activityMessage:Ljava/lang/String;

.field public activityType:I

.field public autoTrigger:Z

.field public autoTriggerOnly:Z

.field public autoTriggerRange:I

.field public closeBiw:Z

.field public contentType:Ljava/lang/String;

.field public dialog:Lcom/layar/data/ActionsDialogData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public label:Ljava/lang/String;

.field public layarAction:Z

.field public method:Ljava/lang/String;

.field public params:Ljava/lang/String;

.field public showActivity:Z

.field public uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const-class v0, Lcom/layar/data/PoiAction;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/PoiAction;->TAG:Ljava/lang/String;

    .line 21
    const/16 v0, 0x26

    new-array v0, v0, [I

    const/4 v1, 0x1

    .line 23
    const/high16 v2, 0x7f02

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 24
    const v2, 0x7f020001

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 25
    const v2, 0x7f020002

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 26
    const v2, 0x7f020003

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 27
    const v2, 0x7f020004

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 28
    const v2, 0x7f020005

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 29
    const v2, 0x7f020006

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 30
    const v2, 0x7f020007

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 31
    const v2, 0x7f020008

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 32
    const v2, 0x7f020009

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 33
    const v2, 0x7f02000a

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 34
    const v2, 0x7f02000b

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 35
    const v2, 0x7f02000c

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 36
    const v2, 0x7f02000d

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 37
    const v2, 0x7f02000e

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 38
    const v2, 0x7f02000f

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 39
    const v2, 0x7f020010

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 40
    const v2, 0x7f020011

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 41
    const v2, 0x7f020012

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 42
    const v2, 0x7f020013

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 43
    const v2, 0x7f020014

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 44
    const v2, 0x7f020015

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 45
    const v2, 0x7f020016

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 46
    const v2, 0x7f020017

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 47
    const v2, 0x7f020018

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 48
    const v2, 0x7f020019

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 49
    const v2, 0x7f02001a

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 50
    const v2, 0x7f02001b

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 51
    const v2, 0x7f02001c

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 52
    const v2, 0x7f02001d

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 53
    const v2, 0x7f02001e

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 54
    const v2, 0x7f02001f

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 55
    const v2, 0x7f020020

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 56
    const v2, 0x7f020021

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 57
    const v2, 0x7f020022

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 58
    const v2, 0x7f020023

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 59
    const v2, 0x7f020024

    aput v2, v0, v1

    .line 21
    sput-object v0, Lcom/layar/data/PoiAction;->ICONS:[I

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/data/PoiAction;->layarAction:Z

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/data/PoiAction;->dialog:Lcom/layar/data/ActionsDialogData;

    .line 18
    return-void
.end method

.method public static getActionType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "contentType"

    .prologue
    .line 74
    const-string v0, "text/plain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "text/plain"

    .line 86
    :goto_0
    return-object v0

    .line 76
    :cond_0
    const-string v0, "text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const-string v0, "text"

    goto :goto_0

    .line 78
    :cond_1
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    const-string v0, "audio"

    goto :goto_0

    .line 80
    :cond_2
    const-string v0, "video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    const-string v0, "video"

    goto :goto_0

    .line 82
    :cond_3
    const-string v0, "application/vnd.layar.internal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    const-string v0, "application/vnd.layar.internal"

    goto :goto_0

    .line 84
    :cond_4
    const-string v0, "application/vnd.layar.async"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    const-string v0, "application/vnd.layar.async"

    goto :goto_0

    .line 86
    :cond_5
    const-string v0, "application/vnd.layar.internal"

    goto :goto_0
.end method

.method public static getGetThereAction()Lcom/layar/data/PoiAction;
    .locals 3

    .prologue
    .line 98
    new-instance v0, Lcom/layar/data/PoiAction;

    invoke-direct {v0}, Lcom/layar/data/PoiAction;-><init>()V

    .line 99
    .local v0, result:Lcom/layar/data/PoiAction;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    .line 100
    const/4 v1, 0x6

    iput v1, v0, Lcom/layar/data/PoiAction;->activityType:I

    .line 101
    invoke-static {}, Lcom/layar/App;->getInstance()Lcom/layar/App;

    move-result-object v1

    const v2, 0x7f0900d2

    invoke-virtual {v1, v2}, Lcom/layar/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/data/PoiAction;->label:Ljava/lang/String;

    .line 102
    return-object v0
.end method

.method public static getInfoAction()Lcom/layar/data/PoiAction;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Lcom/layar/data/PoiAction;

    invoke-direct {v0}, Lcom/layar/data/PoiAction;-><init>()V

    .line 91
    .local v0, result:Lcom/layar/data/PoiAction;
    const-string v1, "info"

    iput-object v1, v0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    .line 92
    const/4 v1, 0x1

    iput v1, v0, Lcom/layar/data/PoiAction;->activityType:I

    .line 93
    invoke-static {}, Lcom/layar/App;->getInstance()Lcom/layar/App;

    move-result-object v1

    const v2, 0x7f09004a

    invoke-virtual {v1, v2}, Lcom/layar/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/data/PoiAction;->label:Ljava/lang/String;

    .line 94
    return-object v0
.end method

.method public static getLockAction(Z)Lcom/layar/data/PoiAction;
    .locals 3
    .parameter "lock"

    .prologue
    .line 106
    new-instance v0, Lcom/layar/data/PoiAction;

    invoke-direct {v0}, Lcom/layar/data/PoiAction;-><init>()V

    .line 107
    .local v0, result:Lcom/layar/data/PoiAction;
    const-string v1, "lock"

    iput-object v1, v0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    .line 108
    const/16 v1, 0x11

    iput v1, v0, Lcom/layar/data/PoiAction;->activityType:I

    .line 109
    invoke-static {}, Lcom/layar/App;->getInstance()Lcom/layar/App;

    move-result-object v1

    if-eqz p0, :cond_0

    .line 110
    const v2, 0x7f0900d4

    .line 109
    :goto_0
    invoke-virtual {v1, v2}, Lcom/layar/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/data/PoiAction;->label:Ljava/lang/String;

    .line 112
    return-object v0

    .line 111
    :cond_0
    const v2, 0x7f0900d5

    goto :goto_0
.end method

.method public static getMoreAction()Lcom/layar/data/PoiAction;
    .locals 3

    .prologue
    .line 116
    new-instance v0, Lcom/layar/data/PoiAction;

    invoke-direct {v0}, Lcom/layar/data/PoiAction;-><init>()V

    .line 117
    .local v0, result:Lcom/layar/data/PoiAction;
    const-string v1, "more"

    iput-object v1, v0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    .line 118
    const/16 v1, 0x12

    iput v1, v0, Lcom/layar/data/PoiAction;->activityType:I

    .line 119
    invoke-static {}, Lcom/layar/App;->getInstance()Lcom/layar/App;

    move-result-object v1

    const v2, 0x7f090026

    invoke-virtual {v1, v2}, Lcom/layar/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/data/PoiAction;->label:Ljava/lang/String;

    .line 120
    return-object v0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/layar/data/PoiAction;
    .locals 12
    .parameter "json"

    .prologue
    const/4 v11, 0x0

    .line 143
    :try_start_0
    const-string v8, "uri"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v7, v11

    .line 144
    .local v7, uri:Ljava/lang/String;
    :goto_0
    const-string v8, "label"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, label:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 146
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 147
    invoke-static {v7}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 148
    const-string v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 149
    const-string v8, "sms:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 150
    const-string v8, "geo:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 151
    const-string v8, "mailto:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 152
    const-string v8, "audio://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 153
    const-string v8, "video://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 154
    const-string v8, "layarshare://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 155
    const-string v8, "layar://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 156
    const-string v8, "www."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 159
    :cond_0
    const-string v8, "Layar"

    const-string v9, "Action structure malformed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v11

    .line 229
    .end local v4           #label:Ljava/lang/String;
    .end local v7           #uri:Ljava/lang/String;
    :goto_1
    return-object v8

    .line 143
    :cond_1
    const-string v8, "uri"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    goto :goto_0

    .line 163
    .restart local v4       #label:Ljava/lang/String;
    .restart local v7       #uri:Ljava/lang/String;
    :cond_2
    new-instance v5, Lcom/layar/data/PoiAction;

    invoke-direct {v5}, Lcom/layar/data/PoiAction;-><init>()V

    .line 164
    .local v5, result:Lcom/layar/data/PoiAction;
    const-string v8, "contentType"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/layar/data/PoiAction;->getActionType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    .line 165
    const-string v8, "method"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/layar/data/PoiAction;->method:Ljava/lang/String;

    .line 166
    const-string v8, "activityType"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v5, Lcom/layar/data/PoiAction;->activityType:I

    .line 167
    iput-object v7, v5, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    .line 168
    iget-object v8, v5, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    const-string v9, "audio://"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 169
    iget-object v8, v5, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    const-string v9, "audio://"

    const-string v10, "http://"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    .line 170
    const-string v8, "audio"

    iput-object v8, v5, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    .line 171
    const/4 v8, 0x2

    iput v8, v5, Lcom/layar/data/PoiAction;->activityType:I

    .line 190
    :cond_3
    :goto_2
    const-string v8, "params"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 191
    const-string v8, "params"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/layar/data/PoiAction;->params:Ljava/lang/String;

    .line 192
    :cond_4
    const-string v8, "closeBiw"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v5, Lcom/layar/data/PoiAction;->closeBiw:Z

    .line 193
    const-string v8, "showActivity"

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v5, Lcom/layar/data/PoiAction;->showActivity:Z

    .line 194
    const-string v8, "activityMessage"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 195
    const-string v8, "activityMessage"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/layar/data/PoiAction;->activityMessage:Ljava/lang/String;

    .line 196
    :cond_5
    iput-object v4, v5, Lcom/layar/data/PoiAction;->label:Ljava/lang/String;

    .line 198
    const-string v8, "autoTriggerRange"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 199
    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/layar/data/PoiAction;->autoTrigger:Z

    .line 200
    const-string v8, "autoTriggerOnly"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v5, Lcom/layar/data/PoiAction;->autoTriggerOnly:Z

    .line 201
    const-string v8, "autoTriggerRange"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v5, Lcom/layar/data/PoiAction;->autoTriggerRange:I

    .line 204
    :cond_6
    const-string v8, "showDialog"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 205
    .local v6, showDialog:Lorg/json/JSONObject;
    if-eqz v6, :cond_9

    .line 207
    new-instance v8, Lcom/layar/data/ActionsDialogData;

    invoke-direct {v8}, Lcom/layar/data/ActionsDialogData;-><init>()V

    iput-object v8, v5, Lcom/layar/data/PoiAction;->dialog:Lcom/layar/data/ActionsDialogData;

    .line 208
    iget-object v8, v5, Lcom/layar/data/PoiAction;->dialog:Lcom/layar/data/ActionsDialogData;

    const-string v9, "title"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/layar/data/ActionsDialogData;->title:Ljava/lang/String;

    .line 209
    iget-object v8, v5, Lcom/layar/data/PoiAction;->dialog:Lcom/layar/data/ActionsDialogData;

    const-string v9, "description"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/layar/data/ActionsDialogData;->description:Ljava/lang/String;

    .line 210
    iget-object v8, v5, Lcom/layar/data/PoiAction;->dialog:Lcom/layar/data/ActionsDialogData;

    const-string v9, "iconURL"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/layar/data/ActionsDialogData;->icon:Ljava/lang/String;

    .line 211
    const-string v8, "actions"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 212
    const-string v8, "actions"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 213
    .local v3, jsonAction:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 214
    .local v1, count:I
    iget-object v8, v5, Lcom/layar/data/PoiAction;->dialog:Lcom/layar/data/ActionsDialogData;

    iget-object v8, v8, Lcom/layar/data/ActionsDialogData;->actions:Ljava/util/ArrayList;

    if-nez v8, :cond_7

    .line 215
    iget-object v8, v5, Lcom/layar/data/PoiAction;->dialog:Lcom/layar/data/ActionsDialogData;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v8, Lcom/layar/data/ActionsDialogData;->actions:Ljava/util/ArrayList;

    .line 216
    :cond_7
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-lt v2, v1, :cond_11

    .line 221
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #jsonAction:Lorg/json/JSONArray;
    :cond_8
    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/layar/data/PoiAction;->autoTrigger:Z

    .line 222
    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/layar/data/PoiAction;->autoTriggerOnly:Z

    :cond_9
    move-object v8, v5

    .line 225
    goto/16 :goto_1

    .line 172
    .end local v6           #showDialog:Lorg/json/JSONObject;
    :cond_a
    iget-object v8, v5, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    const-string v9, "video://"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 173
    iget-object v8, v5, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    const-string v9, "video://"

    const-string v10, "http://"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    .line 174
    const-string v8, "video"

    iput-object v8, v5, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    .line 175
    const/4 v8, 0x3

    iput v8, v5, Lcom/layar/data/PoiAction;->activityType:I

    goto/16 :goto_2

    .line 226
    .end local v4           #label:Ljava/lang/String;
    .end local v5           #result:Lcom/layar/data/PoiAction;
    .end local v7           #uri:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v8, v11

    .line 229
    goto/16 :goto_1

    .line 176
    .restart local v4       #label:Ljava/lang/String;
    .restart local v5       #result:Lcom/layar/data/PoiAction;
    .restart local v7       #uri:Ljava/lang/String;
    :cond_b
    iget-object v8, v5, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    const-string v9, "application/vnd.layar.internal"

    if-ne v8, v9, :cond_d

    .line 177
    iget-object v8, v5, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    const-string v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, v5, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    const-string v9, "https://"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 178
    :cond_c
    const-string v8, "text"

    iput-object v8, v5, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    goto/16 :goto_2

    .line 179
    :cond_d
    iget-object v8, v5, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    const-string v9, "application/vnd.layar.internal"

    if-ne v8, v9, :cond_f

    .line 180
    iget-object v8, v5, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    const-string v9, "layarshare://"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, v5, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    const-string v9, "layar://"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 181
    :cond_e
    iget-object v8, v5, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    const-string v9, "+"

    const-string v10, "%20"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    goto/16 :goto_2

    .line 182
    :cond_f
    iget-object v8, v5, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    const-string v9, "www."

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 183
    const-string v8, "http://"

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    .line 184
    const-string v8, "text"

    iput-object v8, v5, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    goto/16 :goto_2

    .line 185
    :cond_10
    const-string v8, "sms:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "sms://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 186
    const-string v8, "sms:"

    const-string v9, "sms://"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    .line 187
    const-string v8, "Layar"

    const-string v9, "malformed sms tag, corrected"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 217
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #jsonAction:Lorg/json/JSONArray;
    .restart local v6       #showDialog:Lorg/json/JSONObject;
    :cond_11
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/layar/data/PoiAction;->parse(Lorg/json/JSONObject;)Lcom/layar/data/PoiAction;

    move-result-object v0

    .line 218
    .local v0, action:Lcom/layar/data/PoiAction;
    iget-object v8, v5, Lcom/layar/data/PoiAction;->dialog:Lcom/layar/data/ActionsDialogData;

    iget-object v8, v8, Lcom/layar/data/ActionsDialogData;->actions:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3
.end method


# virtual methods
.method public isGetMethod()Z
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/layar/data/PoiAction;->method:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layar/data/PoiAction;->method:Ljava/lang/String;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/layar/data/PoiAction;->label:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/data/PoiAction;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
