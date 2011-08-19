.class Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;
.super Landroid/os/AsyncTask;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/common/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status:[I


# instance fields
.field email:Ljava/lang/String;

.field language:Ljava/lang/String;

.field mdialog:Landroid/app/ProgressDialog;

.field pwd:Ljava/lang/String;

.field status:Lnet/yostore/aws/handler/RegisterHandler$Status;

.field final synthetic this$0:Lnet/yostore/aws/view/common/RegisterActivity;

.field uid:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status()[I
    .locals 3

    .prologue
    .line 202
    sget-object v0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/handler/RegisterHandler$Status;->values()[Lnet/yostore/aws/handler/RegisterHandler$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->ACTed:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->Dup:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->Err:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->OK:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lnet/yostore/aws/view/common/RegisterActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "uid"
    .parameter "pwd"
    .parameter "email"

    .prologue
    .line 216
    iput-object p1, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    .line 211
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 209
    sget-object v0, Lnet/yostore/aws/handler/RegisterHandler$Status;->OK:Lnet/yostore/aws/handler/RegisterHandler$Status;

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->status:Lnet/yostore/aws/handler/RegisterHandler$Status;

    .line 212
    iput-object p2, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->uid:Ljava/lang/String;

    .line 213
    iput-object p3, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->pwd:Ljava/lang/String;

    .line 214
    iput-object p4, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->email:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;)Lnet/yostore/aws/view/common/RegisterActivity;
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    return-object v0
.end method

.method private languageMap()Ljava/lang/String;
    .locals 2

    .prologue
    .line 412
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 414
    .local v0, lo:Ljava/util/Locale;
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    if-ne v0, v1, :cond_0

    const-string v1, "zh_TW"

    .line 446
    :goto_0
    return-object v1

    .line 415
    :cond_0
    sget-object v1, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    if-ne v0, v1, :cond_1

    const-string v1, "zh_TW"

    goto :goto_0

    .line 419
    :cond_1
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    if-ne v0, v1, :cond_2

    const-string v1, "zh_CN"

    goto :goto_0

    .line 420
    :cond_2
    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    if-ne v0, v1, :cond_3

    const-string v1, "zh_CN"

    goto :goto_0

    .line 421
    :cond_3
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    if-ne v0, v1, :cond_4

    const-string v1, "zh_CN"

    goto :goto_0

    .line 422
    :cond_4
    sget-object v1, Ljava/util/Locale;->PRC:Ljava/util/Locale;

    if-ne v0, v1, :cond_5

    const-string v1, "zh_CN"

    goto :goto_0

    .line 425
    :cond_5
    sget-object v1, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    if-ne v0, v1, :cond_6

    const-string v1, "de_DE"

    goto :goto_0

    .line 426
    :cond_6
    sget-object v1, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    if-ne v0, v1, :cond_7

    const-string v1, "de_DE"

    goto :goto_0

    .line 429
    :cond_7
    sget-object v1, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    if-ne v0, v1, :cond_8

    const-string v1, "fr_FR"

    goto :goto_0

    .line 430
    :cond_8
    sget-object v1, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    if-ne v0, v1, :cond_9

    const-string v1, "fr_FR"

    goto :goto_0

    .line 433
    :cond_9
    sget-object v1, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    if-ne v0, v1, :cond_a

    const-string v1, "it_IT"

    goto :goto_0

    .line 434
    :cond_a
    sget-object v1, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    if-ne v0, v1, :cond_b

    const-string v1, "it_IT"

    goto :goto_0

    .line 439
    :cond_b
    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    if-ne v0, v1, :cond_c

    const-string v1, "ja_JP"

    goto :goto_0

    .line 440
    :cond_c
    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    if-ne v0, v1, :cond_d

    const-string v1, "ja_JP"

    goto :goto_0

    .line 442
    :cond_d
    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    if-ne v0, v1, :cond_e

    const-string v1, "ko_KR"

    goto :goto_0

    .line 443
    :cond_e
    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    if-ne v0, v1, :cond_f

    const-string v1, "ko_KR"

    goto :goto_0

    .line 446
    :cond_f
    const-string v1, "en_US"

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 13
    .parameter "params"

    .prologue
    .line 221
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->publishProgress([Ljava/lang/Object;)V

    .line 224
    :try_start_0
    invoke-direct {p0}, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->languageMap()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->language:Ljava/lang/String;

    .line 225
    new-instance v5, Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v5}, Lnet/yostore/aws/api/ApiConfig;-><init>()V

    .line 226
    .local v5, apicfg:Lnet/yostore/aws/api/ApiConfig;
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->language:Ljava/lang/String;

    invoke-static {v5, v0}, Lnet/yostore/aws/handler/SelfActivationHandler;->selfActivate(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;)Lnet/yostore/aws/handler/RegisterHandler$Status;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->status:Lnet/yostore/aws/handler/RegisterHandler$Status;

    .line 227
    invoke-static {}, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status()[I

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->status:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 279
    :pswitch_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 294
    .end local v5           #apicfg:Lnet/yostore/aws/api/ApiConfig;
    :goto_0
    return-object v0

    .line 229
    .restart local v5       #apicfg:Lnet/yostore/aws/api/ApiConfig;
    :pswitch_1
    iget-object v0, v5, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v5, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    const-string v1, "@@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->uid:Ljava/lang/String;

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->pwd:Ljava/lang/String;

    iget-object v2, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->email:Ljava/lang/String;

    iget-object v3, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->language:Ljava/lang/String;

    invoke-static {v5, v0, v1, v2, v3}, Lnet/yostore/aws/handler/UpdateLoginHandler;->updateLogin(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/yostore/aws/handler/RegisterHandler$Status;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->status:Lnet/yostore/aws/handler/RegisterHandler$Status;

    .line 231
    invoke-static {}, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status()[I

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->status:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 242
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 233
    :pswitch_2
    const-string v0, "RegisterDialog"

    const-string v1, "Register OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 236
    :pswitch_3
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 238
    :pswitch_4
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 240
    :pswitch_5
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$0(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->uid:Ljava/lang/String;

    iget-object v2, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->pwd:Ljava/lang/String;

    iget-object v3, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->email:Ljava/lang/String;

    iget-object v4, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->language:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lnet/yostore/aws/handler/RegisterHandler;->doRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/RegisterHandler$Status;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->status:Lnet/yostore/aws/handler/RegisterHandler$Status;

    .line 247
    invoke-static {}, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status()[I

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->status:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 258
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 249
    :pswitch_6
    const-string v0, "RegisterDialog"

    const-string v1, "Register OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 252
    :pswitch_7
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 254
    :pswitch_8
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 256
    :pswitch_9
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 262
    :pswitch_a
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$0(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->uid:Ljava/lang/String;

    iget-object v2, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->pwd:Ljava/lang/String;

    iget-object v3, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->email:Ljava/lang/String;

    iget-object v4, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->language:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lnet/yostore/aws/handler/RegisterHandler;->doRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/RegisterHandler$Status;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->status:Lnet/yostore/aws/handler/RegisterHandler$Status;

    .line 263
    invoke-static {}, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status()[I

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->status:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    .line 274
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 265
    :pswitch_b
    const-string v0, "RegisterDialog"

    const-string v1, "Register OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 268
    :pswitch_c
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 270
    :pswitch_d
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 272
    :pswitch_e
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 277
    :pswitch_f
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 281
    .end local v5           #apicfg:Lnet/yostore/aws/api/ApiConfig;
    :catch_0
    move-exception v0

    move-object v12, v0

    .line 282
    .local v12, e:Ljava/lang/Exception;
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$0(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->uid:Ljava/lang/String;

    iget-object v8, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->pwd:Ljava/lang/String;

    iget-object v9, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->email:Ljava/lang/String;

    iget-object v10, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->language:Ljava/lang/String;

    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$1(Lnet/yostore/aws/view/common/RegisterActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Lnet/yostore/aws/handler/RegisterHandler;->doRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/RegisterHandler$Status;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->status:Lnet/yostore/aws/handler/RegisterHandler$Status;

    .line 283
    invoke-static {}, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status()[I

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->status:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4

    .line 294
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 285
    :pswitch_10
    const-string v0, "RegisterDialog"

    const-string v1, "Register OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 288
    :pswitch_11
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 290
    :pswitch_12
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 292
    :pswitch_13
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_a
        :pswitch_0
        :pswitch_f
    .end packed-switch

    .line 231
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 247
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 263
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_d
    .end packed-switch

    .line 283
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 7
    .parameter "result"

    .prologue
    const v6, 0x7f060038

    const v5, 0x7f060031

    const/4 v4, 0x1

    const v3, 0x7f060029

    .line 321
    new-array v0, v4, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->publishProgress([Ljava/lang/Object;)V

    .line 322
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 374
    :goto_0
    return-void

    .line 324
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/RegisterActivity;->access$0(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 325
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 326
    new-instance v1, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask$2;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask$2;-><init>(Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 335
    :pswitch_1
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$2(Lnet/yostore/aws/view/common/RegisterActivity;)Lnet/yostore/aws/ansytask/LoginTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/LoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 338
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/RegisterActivity;->access$0(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 339
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060026

    new-instance v2, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask$3;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask$3;-><init>(Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 348
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/RegisterActivity;->access$0(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 349
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 350
    new-instance v1, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask$4;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask$4;-><init>(Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 359
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/RegisterActivity;->access$0(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06002e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 360
    new-instance v1, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask$5;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask$5;-><init>(Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;)V

    .line 359
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v0, 0x0

    .line 303
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 304
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 306
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$0(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/RegisterActivity;->access$0(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/RegisterActivity;->access$0(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask$1;

    invoke-direct {v5, p0}, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask$1;-><init>(Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->mdialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
