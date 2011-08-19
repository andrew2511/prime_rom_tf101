.class Lcom/layar/UserCreateActivity$1;
.super Ljava/lang/Object;
.source "UserCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/layar/UserCreateActivity$1;->this$0:Lcom/layar/UserCreateActivity;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/layar/UserCreateActivity$1;->this$0:Lcom/layar/UserCreateActivity;

    invoke-static {v0}, Lcom/layar/UserCreateActivity;->access$0(Lcom/layar/UserCreateActivity;)V

    .line 86
    return-void
.end method
