.class Lcom/asus/filemanager/dialog/DialogNewFolder$CancelListener;
.super Ljava/lang/Object;
.source "DialogNewFolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/dialog/DialogNewFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/filemanager/dialog/DialogNewFolder;


# direct methods
.method private constructor <init>(Lcom/asus/filemanager/dialog/DialogNewFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/asus/filemanager/dialog/DialogNewFolder$CancelListener;->this$0:Lcom/asus/filemanager/dialog/DialogNewFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/filemanager/dialog/DialogNewFolder;Lcom/asus/filemanager/dialog/DialogNewFolder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/asus/filemanager/dialog/DialogNewFolder$CancelListener;-><init>(Lcom/asus/filemanager/dialog/DialogNewFolder;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogNewFolder$CancelListener;->this$0:Lcom/asus/filemanager/dialog/DialogNewFolder;

    invoke-static {v0}, Lcom/asus/filemanager/dialog/DialogNewFolder;->access$500(Lcom/asus/filemanager/dialog/DialogNewFolder;)V

    .line 141
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogNewFolder$CancelListener;->this$0:Lcom/asus/filemanager/dialog/DialogNewFolder;

    invoke-static {v0}, Lcom/asus/filemanager/dialog/DialogNewFolder;->access$500(Lcom/asus/filemanager/dialog/DialogNewFolder;)V

    .line 137
    return-void
.end method
