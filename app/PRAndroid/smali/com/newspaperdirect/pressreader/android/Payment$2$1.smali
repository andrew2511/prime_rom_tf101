.class Lcom/newspaperdirect/pressreader/android/Payment$2$1;
.super Ljava/lang/Object;
.source "Payment.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Payment$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/Payment$2;

.field private final synthetic val$status:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Payment$2;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Payment$2$1;->this$1:Lcom/newspaperdirect/pressreader/android/Payment$2;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/Payment$2$1;->val$status:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Payment$2$1;->val$status:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iput-object p1, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 169
    return-void
.end method
