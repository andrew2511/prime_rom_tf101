.class Lcom/asus/filemanager/dialog/DialogDelete$DeleteListener;
.super Ljava/lang/Object;
.source "DialogDelete.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/dialog/DialogDelete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/filemanager/dialog/DialogDelete;


# direct methods
.method private constructor <init>(Lcom/asus/filemanager/dialog/DialogDelete;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/asus/filemanager/dialog/DialogDelete$DeleteListener;->this$0:Lcom/asus/filemanager/dialog/DialogDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/filemanager/dialog/DialogDelete;Lcom/asus/filemanager/dialog/DialogDelete$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/asus/filemanager/dialog/DialogDelete$DeleteListener;-><init>(Lcom/asus/filemanager/dialog/DialogDelete;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogDelete$DeleteListener;->this$0:Lcom/asus/filemanager/dialog/DialogDelete;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/asus/filemanager/dialog/DialogDelete;->access$200(Lcom/asus/filemanager/dialog/DialogDelete;Z)V

    .line 69
    return-void
.end method
