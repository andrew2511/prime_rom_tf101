.class Lcom/asus/filemanager2/activity/FileManagerActivity$ProgressCancelListener;
.super Ljava/lang/Object;
.source "FileManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager2/activity/FileManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;


# direct methods
.method private constructor <init>(Lcom/asus/filemanager2/activity/FileManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 956
    iput-object p1, p0, Lcom/asus/filemanager2/activity/FileManagerActivity$ProgressCancelListener;->this$0:Lcom/asus/filemanager2/activity/FileManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/filemanager2/activity/FileManagerActivity;Lcom/asus/filemanager2/activity/FileManagerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 956
    invoke-direct {p0, p1}, Lcom/asus/filemanager2/activity/FileManagerActivity$ProgressCancelListener;-><init>(Lcom/asus/filemanager2/activity/FileManagerActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 967
    invoke-static {}, Lcom/asus/filemanager/edit/EditorAsyncHelper;->copyFileTerminate()V

    .line 968
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 961
    invoke-static {}, Lcom/asus/filemanager/edit/EditorAsyncHelper;->copyFileTerminate()V

    .line 962
    return-void
.end method
