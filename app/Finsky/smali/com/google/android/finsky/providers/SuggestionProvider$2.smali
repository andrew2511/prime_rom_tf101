.class Lcom/google/android/finsky/providers/SuggestionProvider$2;
.super Ljava/lang/Object;
.source "SuggestionProvider.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/providers/SuggestionProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/providers/SuggestionProvider;

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/providers/SuggestionProvider;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/finsky/providers/SuggestionProvider$2;->this$0:Lcom/google/android/finsky/providers/SuggestionProvider;

    iput-object p2, p0, Lcom/google/android/finsky/providers/SuggestionProvider$2;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 1
    .parameter "error"
    .parameter "errorMessage"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/finsky/providers/SuggestionProvider$2;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 155
    return-void
.end method
