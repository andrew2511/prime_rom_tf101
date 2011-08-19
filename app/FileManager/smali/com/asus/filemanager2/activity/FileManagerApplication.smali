.class public Lcom/asus/filemanager2/activity/FileManagerApplication;
.super Landroid/app/Application;
.source "FileManagerApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 45
    invoke-static {p0}, Lcom/asus/filemanager/adapter/FileProvider;->Init(Landroid/content/Context;)V

    .line 46
    invoke-static {p0}, Lcom/asus/filemanager/dialog/ToastMsg;->Init(Landroid/content/Context;)V

    .line 47
    invoke-static {p0}, Lcom/asus/filemanager/edit/EditorAsyncHelper;->Init(Landroid/content/Context;)V

    .line 49
    return-void
.end method
