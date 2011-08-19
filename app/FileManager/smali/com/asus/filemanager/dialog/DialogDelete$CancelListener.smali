.class Lcom/asus/filemanager/dialog/DialogDelete$CancelListener;
.super Ljava/lang/Object;
.source "DialogDelete.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/dialog/DialogDelete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/filemanager/dialog/DialogDelete;


# direct methods
.method private constructor <init>(Lcom/asus/filemanager/dialog/DialogDelete;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/asus/filemanager/dialog/DialogDelete$CancelListener;->this$0:Lcom/asus/filemanager/dialog/DialogDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/filemanager/dialog/DialogDelete;Lcom/asus/filemanager/dialog/DialogDelete$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/asus/filemanager/dialog/DialogDelete$CancelListener;-><init>(Lcom/asus/filemanager/dialog/DialogDelete;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogDelete$CancelListener;->this$0:Lcom/asus/filemanager/dialog/DialogDelete;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/filemanager/dialog/DialogDelete;->access$200(Lcom/asus/filemanager/dialog/DialogDelete;Z)V

    .line 80
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogDelete$CancelListener;->this$0:Lcom/asus/filemanager/dialog/DialogDelete;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/filemanager/dialog/DialogDelete;->access$200(Lcom/asus/filemanager/dialog/DialogDelete;Z)V

    .line 76
    return-void
.end method
