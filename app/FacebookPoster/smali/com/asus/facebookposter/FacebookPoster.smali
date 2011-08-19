.class public Lcom/asus/facebookposter/FacebookPoster;
.super Landroid/app/Activity;
.source "FacebookPoster.java"


# instance fields
.field private final APP_API_ID:Ljava/lang/String;

.field private facebook:Lcom/facebook/android/Facebook;

.field private mFbDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const-string v0, "212169365460896"

    iput-object v0, p0, Lcom/asus/facebookposter/FacebookPoster;->APP_API_ID:Ljava/lang/String;

    return-void
.end method

.method private msgFitter(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v9, 0x19f

    const/4 v8, 0x0

    .line 131
    const-string v6, "\r ~"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 132
    .local v2, contentTail:I
    if-gez v2, :cond_0

    .line 133
    const-string v6, "FacebookPoster"

    const-string v7, "msgFittter: this should never happen. Can\'t find the end of the content."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 150
    :goto_0
    return-object v6

    .line 136
    :cond_0
    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, content:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, info:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v5, v9, v6

    .line 140
    .local v5, maxContentLength:I
    const-string v6, " "

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v4

    .line 141
    .local v4, lastIndex:I
    if-gez v4, :cond_1

    move v4, v5

    .line 142
    :cond_1
    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 144
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 146
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const-string v6, " ..."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 61
    iget-object v0, p0, Lcom/asus/facebookposter/FacebookPoster;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/android/Facebook;->authorizeCallback(IILandroid/content/Intent;)V

    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    new-instance v3, Lcom/facebook/android/Facebook;

    const-string v4, "212169365460896"

    invoke-direct {v3, v4}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/asus/facebookposter/FacebookPoster;->facebook:Lcom/facebook/android/Facebook;

    .line 29
    const-string v2, "Your text to share goes here"

    .line 30
    .local v2, msg:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/asus/facebookposter/FacebookPoster;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 31
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.asus.facebookposter.action.SEND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    :cond_0
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    :cond_1
    iget-object v3, p0, Lcom/asus/facebookposter/FacebookPoster;->facebook:Lcom/facebook/android/Facebook;

    invoke-static {v3, p0}, Lcom/asus/facebookposter/SessionStore;->restore(Lcom/facebook/android/Facebook;Landroid/content/Context;)Z

    .line 40
    iget-object v3, p0, Lcom/asus/facebookposter/FacebookPoster;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v3}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    invoke-virtual {p0, v2}, Lcom/asus/facebookposter/FacebookPoster;->showFbDialog(Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 44
    :cond_2
    iget-object v3, p0, Lcom/asus/facebookposter/FacebookPoster;->facebook:Lcom/facebook/android/Facebook;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "publish_stream"

    aput-object v6, v4, v5

    new-instance v5, Lcom/asus/facebookposter/AppLoginListener;

    iget-object v6, p0, Lcom/asus/facebookposter/FacebookPoster;->facebook:Lcom/facebook/android/Facebook;

    invoke-direct {v5, v6, p0, v2}, Lcom/asus/facebookposter/AppLoginListener;-><init>(Lcom/facebook/android/Facebook;Lcom/asus/facebookposter/FacebookPoster;Ljava/lang/String;)V

    invoke-virtual {v3, p0, v4, v5}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 54
    iget-object v0, p0, Lcom/asus/facebookposter/FacebookPoster;->mFbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/facebookposter/FacebookPoster;->mFbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 55
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 67
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/asus/facebookposter/FacebookPoster;->finish()V

    .line 69
    :cond_0
    return-void
.end method

.method public showFbDialog(Ljava/lang/String;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 79
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 80
    .local v5, previousIndex:I
    const-string v6, "\n"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 82
    .local v2, currentIndex:I
    :goto_0
    if-lez v2, :cond_1

    .line 84
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    sub-int v6, v2, v8

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 89
    .local v1, charBeforeNewLine:C
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 91
    const-string v6, "\r"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    :goto_1
    add-int/lit8 v5, v2, 0x1

    .line 96
    const-string v6, "\n"

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 97
    goto :goto_0

    .line 93
    :cond_0
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 99
    .end local v1           #charBeforeNewLine:C
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    const-string v6, " ++"

    const-string v7, " "

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x1a4

    if-lt v6, v7, :cond_2

    .line 107
    const/high16 v6, 0x7f04

    invoke-virtual {p0, v6}, Lcom/asus/facebookposter/FacebookPoster;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 113
    invoke-direct {p0, p1}, Lcom/asus/facebookposter/FacebookPoster;->msgFitter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    :cond_2
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v4, parameters:Landroid/os/Bundle;
    const-string v6, "message"

    invoke-virtual {v4, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v6, p0, Lcom/asus/facebookposter/FacebookPoster;->facebook:Lcom/facebook/android/Facebook;

    const-string v7, "stream.publish"

    new-instance v8, Lcom/asus/facebookposter/FacebookDialogListener;

    invoke-direct {v8, p0}, Lcom/asus/facebookposter/FacebookDialogListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v6, p0, v7, v4, v8}, Lcom/facebook/android/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)Landroid/app/Dialog;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/facebookposter/FacebookPoster;->mFbDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v4           #parameters:Landroid/os/Bundle;
    :goto_2
    return-void

    .line 122
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 124
    .local v3, e:Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method
