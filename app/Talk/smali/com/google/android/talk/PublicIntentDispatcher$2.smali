.class Lcom/google/android/talk/PublicIntentDispatcher$2;
.super Ljava/lang/Object;
.source "PublicIntentDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/PublicIntentDispatcher;->onAccountStateAvailable(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/PublicIntentDispatcher;


# direct methods
.method constructor <init>(Lcom/google/android/talk/PublicIntentDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/android/talk/PublicIntentDispatcher$2;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/talk/PublicIntentDispatcher$2;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    invoke-static {v0}, Lcom/google/android/talk/PublicIntentDispatcher;->access$000(Lcom/google/android/talk/PublicIntentDispatcher;)V

    .line 194
    return-void
.end method
