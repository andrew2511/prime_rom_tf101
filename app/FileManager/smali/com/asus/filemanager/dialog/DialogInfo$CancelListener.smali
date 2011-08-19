.class Lcom/asus/filemanager/dialog/DialogInfo$CancelListener;
.super Ljava/lang/Object;
.source "DialogInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/dialog/DialogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/filemanager/dialog/DialogInfo;


# direct methods
.method private constructor <init>(Lcom/asus/filemanager/dialog/DialogInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/asus/filemanager/dialog/DialogInfo$CancelListener;->this$0:Lcom/asus/filemanager/dialog/DialogInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/filemanager/dialog/DialogInfo;Lcom/asus/filemanager/dialog/DialogInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/asus/filemanager/dialog/DialogInfo$CancelListener;-><init>(Lcom/asus/filemanager/dialog/DialogInfo;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogInfo$CancelListener;->this$0:Lcom/asus/filemanager/dialog/DialogInfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/filemanager/dialog/DialogInfo;->access$300(Lcom/asus/filemanager/dialog/DialogInfo;Z)V

    .line 106
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogInfo$CancelListener;->this$0:Lcom/asus/filemanager/dialog/DialogInfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/filemanager/dialog/DialogInfo;->access$300(Lcom/asus/filemanager/dialog/DialogInfo;Z)V

    .line 101
    return-void
.end method
