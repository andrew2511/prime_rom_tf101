.class public Lcom/android/email/MessagingExceptionStrings;
.super Ljava/lang/Object;
.source "MessagingExceptionStrings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorString(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "e"

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/android/email/MessagingExceptionStrings;->getErrorStringResourceId(Lcom/android/emailcommon/mail/MessagingException;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getErrorStringResourceId(Lcom/android/emailcommon/mail/MessagingException;)I
    .locals 2
    .parameter "e"

    .prologue
    const v1, 0x7f080113

    .line 35
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 49
    :pswitch_0
    const v0, 0x7f080045

    :goto_0
    return v0

    .line 37
    :pswitch_1
    const v0, 0x7f080114

    goto :goto_0

    .line 39
    :pswitch_2
    const v0, 0x7f080111

    goto :goto_0

    .line 41
    :pswitch_3
    const v0, 0x7f080112

    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 43
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 47
    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
