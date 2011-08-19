.class Lcom/layar/UserCreateActivity$2;
.super Ljava/lang/Object;
.source "UserCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserCreateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserCreateActivity;


# direct methods
.method constructor <init>(Lcom/layar/UserCreateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserCreateActivity$2;->this$0:Lcom/layar/UserCreateActivity;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 91
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/layar/UserCreateActivity$2;->this$0:Lcom/layar/UserCreateActivity;

    invoke-static {v0}, Lcom/layar/UserCreateActivity;->access$0(Lcom/layar/UserCreateActivity;)V

    .line 93
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
