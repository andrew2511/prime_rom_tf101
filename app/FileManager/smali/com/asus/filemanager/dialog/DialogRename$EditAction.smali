.class Lcom/asus/filemanager/dialog/DialogRename$EditAction;
.super Ljava/lang/Object;
.source "DialogRename.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/dialog/DialogRename;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/filemanager/dialog/DialogRename;


# direct methods
.method private constructor <init>(Lcom/asus/filemanager/dialog/DialogRename;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/asus/filemanager/dialog/DialogRename$EditAction;->this$0:Lcom/asus/filemanager/dialog/DialogRename;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/filemanager/dialog/DialogRename;Lcom/asus/filemanager/dialog/DialogRename$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/asus/filemanager/dialog/DialogRename$EditAction;-><init>(Lcom/asus/filemanager/dialog/DialogRename;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/asus/filemanager/dialog/DialogRename$EditAction;->this$0:Lcom/asus/filemanager/dialog/DialogRename;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/filemanager/dialog/DialogNewFolder;->IsSpecialChar(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/asus/filemanager/dialog/DialogRename;->access$300(Lcom/asus/filemanager/dialog/DialogRename;Z)V

    .line 106
    return-void

    .line 105
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 108
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 110
    return-void
.end method
