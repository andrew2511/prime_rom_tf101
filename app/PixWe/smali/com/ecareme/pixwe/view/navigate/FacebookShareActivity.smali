.class public Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;
.super Landroid/app/Activity;
.source "FacebookShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$LoginDialogListener;,
        Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$WallPostDialogListener;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "153786151325263"

.field private static final EXPIRES:Ljava/lang/String; = "expires_in"

.field private static final KEY:Ljava/lang/String; = "facebook-credentials"

.field private static final PERMISSIONS:[Ljava/lang/String; = null

.field private static TAG:Ljava/lang/String; = null

.field private static final TOKEN:Ljava/lang/String; = "access_token"


# instance fields
.field private facebook:Lcom/facebook/android/Facebook;

.field private link:Ljava/lang/String;

.field private messageToPost:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "publish_stream"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->PERMISSIONS:[Ljava/lang/String;

    .line 30
    const-string v0, "ShareOnFacebook"

    sput-object v0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;)Lcom/facebook/android/Facebook;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->facebook:Lcom/facebook/android/Facebook;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->messageToPost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->link:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 157
    return-void
.end method


# virtual methods
.method public doNotShare(Landroid/view/View;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->finish()V

    .line 73
    return-void
.end method

.method public loginAndPostToWall()V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->facebook:Lcom/facebook/android/Facebook;

    sget-object v1, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->PERMISSIONS:[Ljava/lang/String;

    const/4 v2, -0x1

    new-instance v3, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$LoginDialogListener;

    invoke-direct {v3, p0}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$LoginDialogListener;-><init>(Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/android/Facebook$DialogListener;)V

    .line 85
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v3, Lcom/facebook/android/Facebook;

    const-string v4, "153786151325263"

    invoke-direct {v3, v4}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->facebook:Lcom/facebook/android/Facebook;

    .line 54
    iget-object v3, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {p0, v3}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->restoreCredentials(Lcom/facebook/android/Facebook;)Z

    .line 55
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    .local v2, layout:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 57
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "facebookMessage"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, facebookMessage:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "facebookLink"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, facebookLink:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 64
    const-string v1, ""

    .line 66
    :cond_0
    iput-object v1, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->messageToPost:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->link:Ljava/lang/String;

    .line 68
    invoke-virtual {p0, v6}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->share(Landroid/view/View;)V

    .line 69
    return-void
.end method

.method public postToWall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "message"
    .parameter "link"

    .prologue
    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, parameters:Landroid/os/Bundle;
    const-string v1, "message"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f06

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "link"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->facebook:Lcom/facebook/android/Facebook;

    const-string v2, "stream.publish"

    new-instance v3, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$WallPostDialogListener;

    invoke-direct {v3, p0}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity$WallPostDialogListener;-><init>(Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;)V

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/facebook/android/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 100
    return-void
.end method

.method public restoreCredentials(Lcom/facebook/android/Facebook;)Z
    .locals 4
    .parameter "facebook"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "facebook-credentials"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 45
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "access_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/facebook/android/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 46
    const-string v1, "expires_in"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/facebook/android/Facebook;->setAccessExpires(J)V

    .line 47
    invoke-virtual {p1}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v1

    return v1
.end method

.method public saveCredentials(Lcom/facebook/android/Facebook;)Z
    .locals 4
    .parameter "facebook"

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "facebook-credentials"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 38
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "access_token"

    invoke-virtual {p1}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    const-string v1, "expires_in"

    invoke-virtual {p1}, Lcom/facebook/android/Facebook;->getAccessExpires()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public share(Landroid/view/View;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->loginAndPostToWall()V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->messageToPost:Ljava/lang/String;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->link:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ecareme/pixwe/view/navigate/FacebookShareActivity;->postToWall(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
