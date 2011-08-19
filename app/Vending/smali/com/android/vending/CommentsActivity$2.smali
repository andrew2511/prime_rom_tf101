.class Lcom/android/vending/CommentsActivity$2;
.super Ljava/lang/Object;
.source "CommentsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/CommentsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/CommentsActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/CommentsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/vending/CommentsActivity$2;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/vending/CommentsActivity$2;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/vending/CommentsActivity;->access$000(Lcom/android/vending/CommentsActivity;Ljava/lang/String;)V

    .line 155
    return-void
.end method
