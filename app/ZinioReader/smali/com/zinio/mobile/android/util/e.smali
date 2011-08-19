.class public final Lcom/zinio/mobile/android/util/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field private b:Landroid/app/Activity;

.field private c:Lcom/zinio/mobile/android/view/dialogs/e;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/util/e;->c:Lcom/zinio/mobile/android/view/dialogs/e;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/util/e;->a:Z

    .line 134
    new-instance v0, Lcom/zinio/mobile/android/util/h;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/util/h;-><init>(Lcom/zinio/mobile/android/util/e;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/util/e;->f:Landroid/os/Handler;

    .line 35
    iput-object p1, p0, Lcom/zinio/mobile/android/util/e;->b:Landroid/app/Activity;

    .line 36
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {v0, p1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/util/e;->c:Lcom/zinio/mobile/android/view/dialogs/e;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/util/e;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zinio/mobile/android/util/e;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    :cond_0
    move v0, v3

    .line 84
    :goto_0
    return v0

    .line 64
    :cond_1
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    .line 65
    goto :goto_0

    .line 71
    :cond_2
    const-string v0, "."

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 72
    goto :goto_0

    .line 78
    :cond_3
    const-string v0, "^[a-zA-Z0-9\\.\\-_]+@[a-zA-Z0-9\\.\\-_]+\\.[a-zA-Z0-9\\.\\-_]+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    .line 80
    goto :goto_0

    :cond_4
    move v0, v4

    .line 84
    goto :goto_0
.end method

.method static synthetic b(Lcom/zinio/mobile/android/util/e;)Lcom/zinio/mobile/android/view/dialogs/e;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zinio/mobile/android/util/e;->c:Lcom/zinio/mobile/android/view/dialogs/e;

    return-object v0
.end method

.method static synthetic c(Lcom/zinio/mobile/android/util/e;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zinio/mobile/android/util/e;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/zinio/mobile/android/util/e;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zinio/mobile/android/util/e;->b:Landroid/app/Activity;

    sget-object v1, Lcom/zinio/mobile/android/a;->j:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic e(Lcom/zinio/mobile/android/util/e;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zinio/mobile/android/util/e;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zinio/mobile/android/util/e;->b:Landroid/app/Activity;

    const v1, 0x7f0c0053

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zinio/mobile/android/util/e;->d:Landroid/widget/EditText;

    .line 43
    iget-object v0, p0, Lcom/zinio/mobile/android/util/e;->b:Landroid/app/Activity;

    const v1, 0x7f0c0054

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zinio/mobile/android/util/e;->e:Landroid/widget/EditText;

    .line 44
    iget-object v0, p0, Lcom/zinio/mobile/android/util/e;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/zinio/mobile/android/util/e;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v2

    iget-object v3, p0, Lcom/zinio/mobile/android/util/e;->f:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v1}, Lcom/zinio/mobile/android/c/e;->c(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 92
    iget-object v0, p0, Lcom/zinio/mobile/android/util/e;->b:Landroid/app/Activity;

    const v1, 0x7f0c0053

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zinio/mobile/android/util/e;->d:Landroid/widget/EditText;

    .line 93
    iget-object v0, p0, Lcom/zinio/mobile/android/util/e;->b:Landroid/app/Activity;

    const v1, 0x7f0c0054

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zinio/mobile/android/util/e;->e:Landroid/widget/EditText;

    .line 95
    iget-object v0, p0, Lcom/zinio/mobile/android/util/e;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    iget-object v0, p0, Lcom/zinio/mobile/android/util/e;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    iget-object v0, p0, Lcom/zinio/mobile/android/util/e;->b:Landroid/app/Activity;

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 99
    iget-object v3, p0, Lcom/zinio/mobile/android/util/e;->d:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 103
    invoke-static {v1}, Lcom/zinio/mobile/android/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/zinio/mobile/android/util/e;->c:Lcom/zinio/mobile/android/view/dialogs/e;

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v1

    iget-object v0, p0, Lcom/zinio/mobile/android/util/e;->b:Landroid/app/Activity;

    check-cast v0, Lcom/zinio/mobile/android/view/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 107
    iget-object v0, p0, Lcom/zinio/mobile/android/util/e;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 132
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x14

    if-le v0, v3, :cond_2

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/util/e;->c:Lcom/zinio/mobile/android/view/dialogs/e;

    const v1, 0x7f08004e

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v1

    iget-object v0, p0, Lcom/zinio/mobile/android/util/e;->b:Landroid/app/Activity;

    check-cast v0, Lcom/zinio/mobile/android/view/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 114
    iget-object v0, p0, Lcom/zinio/mobile/android/util/e;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/zinio/mobile/android/util/e;->b:Landroid/app/Activity;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4

    .line 124
    :cond_3
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    iget-object v3, p0, Lcom/zinio/mobile/android/util/e;->f:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1, v2}, Lcom/zinio/mobile/android/c/e;->c(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Z

    .line 129
    :goto_1
    iput-boolean v4, p0, Lcom/zinio/mobile/android/util/e;->a:Z

    .line 131
    iget-object v0, p0, Lcom/zinio/mobile/android/util/e;->b:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 127
    :cond_4
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    iget-object v3, p0, Lcom/zinio/mobile/android/util/e;->f:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1, v2}, Lcom/zinio/mobile/android/c/e;->b(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Thread;

    goto :goto_1
.end method
