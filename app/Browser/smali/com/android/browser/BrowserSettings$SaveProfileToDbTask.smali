.class Lcom/android/browser/BrowserSettings$SaveProfileToDbTask;
.super Lcom/android/browser/BrowserSettings$AutoFillProfileDbTask;
.source "BrowserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveProfileToDbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/browser/BrowserSettings$AutoFillProfileDbTask",
        "<",
        "Landroid/webkit/WebSettings$AutoFillProfile;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 950
    const-class v0, Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/browser/BrowserSettings$SaveProfileToDbTask;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/browser/BrowserSettings;Landroid/content/Context;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "ctx"
    .parameter "msg"

    .prologue
    .line 951
    iput-object p1, p0, Lcom/android/browser/BrowserSettings$SaveProfileToDbTask;->this$0:Lcom/android/browser/BrowserSettings;

    .line 952
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/BrowserSettings$AutoFillProfileDbTask;-><init>(Lcom/android/browser/BrowserSettings;Landroid/content/Context;Landroid/os/Message;)V

    .line 953
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 950
    check-cast p1, [Landroid/webkit/WebSettings$AutoFillProfile;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserSettings$SaveProfileToDbTask;->doInBackground([Landroid/webkit/WebSettings$AutoFillProfile;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/webkit/WebSettings$AutoFillProfile;)Ljava/lang/Void;
    .locals 3
    .parameter "values"

    .prologue
    .line 956
    iget-object v1, p0, Lcom/android/browser/BrowserSettings$SaveProfileToDbTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/browser/AutoFillProfileDatabase;->getInstance(Landroid/content/Context;)Lcom/android/browser/AutoFillProfileDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserSettings$SaveProfileToDbTask;->mAutoFillProfileDb:Lcom/android/browser/AutoFillProfileDatabase;

    .line 957
    sget-boolean v1, Lcom/android/browser/BrowserSettings$SaveProfileToDbTask;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/BrowserSettings$SaveProfileToDbTask;->this$0:Lcom/android/browser/BrowserSettings;

    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$3300(Lcom/android/browser/BrowserSettings;)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 958
    :cond_0
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 959
    .local v0, newProfile:Landroid/webkit/WebSettings$AutoFillProfile;
    iget-object v1, p0, Lcom/android/browser/BrowserSettings$SaveProfileToDbTask;->mAutoFillProfileDb:Lcom/android/browser/AutoFillProfileDatabase;

    iget-object v2, p0, Lcom/android/browser/BrowserSettings$SaveProfileToDbTask;->this$0:Lcom/android/browser/BrowserSettings;

    invoke-static {v2}, Lcom/android/browser/BrowserSettings;->access$3300(Lcom/android/browser/BrowserSettings;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/browser/AutoFillProfileDatabase;->addOrUpdateProfile(ILandroid/webkit/WebSettings$AutoFillProfile;)V

    .line 960
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .parameter "x0"

    .prologue
    .line 950
    check-cast p1, [Landroid/webkit/WebSettings$AutoFillProfile;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserSettings$SaveProfileToDbTask;->doInBackground([Landroid/webkit/WebSettings$AutoFillProfile;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
