.class Lcom/google/android/apps/books/sync/CollectionsContentHandler$2;
.super Ljava/lang/Object;
.source "CollectionsContentHandler.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/sync/CollectionsContentHandler;->associateText(Landroid/sax/Element;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/sync/CollectionsContentHandler;

.field final synthetic val$valueName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/sync/CollectionsContentHandler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler$2;->this$0:Lcom/google/android/apps/books/sync/CollectionsContentHandler;

    iput-object p2, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler$2;->val$valueName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 2
    .parameter "body"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler$2;->this$0:Lcom/google/android/apps/books/sync/CollectionsContentHandler;

    invoke-static {v0}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->access$200(Lcom/google/android/apps/books/sync/CollectionsContentHandler;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler$2;->val$valueName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method
