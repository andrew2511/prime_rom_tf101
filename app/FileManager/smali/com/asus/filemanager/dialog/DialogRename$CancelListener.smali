.class Lcom/asus/filemanager/dialog/DialogRename$CancelListener;
.super Ljava/lang/Object;
.source "DialogRename.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/dialog/DialogRename;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/filemanager/dialog/DialogRename;


# direct methods
.method private constructor <init>(Lcom/asus/filemanager/dialog/DialogRename;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/asus/filemanager/dialog/DialogRename$CancelListener;->this$0:Lcom/asus/filemanager/dialog/DialogRename;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/filemanager/dialog/DialogRename;Lcom/asus/filemanager/dialog/DialogRename$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/asus/filemanager/dialog/DialogRename$CancelListener;-><init>(Lcom/asus/filemanager/dialog/DialogRename;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogRename$CancelListener;->this$0:Lcom/asus/filemanager/dialog/DialogRename;

    invoke-static {v0}, Lcom/asus/filemanager/dialog/DialogRename;->access$500(Lcom/asus/filemanager/dialog/DialogRename;)V

    .line 125
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogRename$CancelListener;->this$0:Lcom/asus/filemanager/dialog/DialogRename;

    invoke-static {v0}, Lcom/asus/filemanager/dialog/DialogRename;->access$500(Lcom/asus/filemanager/dialog/DialogRename;)V

    .line 122
    return-void
.end method
