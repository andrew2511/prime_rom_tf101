.class Lcom/google/android/apps/books/widget/TableOfContentsActionItem$1;
.super Ljava/lang/Object;
.source "TableOfContentsActionItem.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/TableOfContentsActionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/widget/TableOfContentsActionItem;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem$1;->this$0:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem$1;->this$0:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->access$002(Lcom/google/android/apps/books/widget/TableOfContentsActionItem;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;

    .line 120
    return-void
.end method
