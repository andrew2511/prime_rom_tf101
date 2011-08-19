.class Lcom/google/android/gm/HtmlConversationActivity$Copy;
.super Ljava/lang/Object;
.source "HtmlConversationActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HtmlConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Copy"
.end annotation


# instance fields
.field private final mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/google/android/gm/HtmlConversationActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/HtmlConversationActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "text"

    .prologue
    .line 675
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationActivity$Copy;->this$0:Lcom/google/android/gm/HtmlConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object p2, p0, Lcom/google/android/gm/HtmlConversationActivity$Copy;->mText:Ljava/lang/CharSequence;

    .line 677
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationActivity$Copy;->this$0:Lcom/google/android/gm/HtmlConversationActivity;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationActivity$Copy;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/google/android/gm/HtmlConversationActivity;->access$500(Lcom/google/android/gm/HtmlConversationActivity;Ljava/lang/CharSequence;)V

    .line 681
    const/4 v0, 0x1

    return v0
.end method
