.class final Lcom/asus/reader/book/BookViewActivity$SelectionCursor;
.super Ljava/lang/Object;
.source "BookViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/BookViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectionCursor"
.end annotation


# instance fields
.field bound_index:I

.field point_id:I

.field final synthetic this$0:Lcom/asus/reader/book/BookViewActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/BookViewActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1139
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$SelectionCursor;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity$SelectionCursor;->point_id:I

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity$SelectionCursor;->bound_index:I

    return-void
.end method
