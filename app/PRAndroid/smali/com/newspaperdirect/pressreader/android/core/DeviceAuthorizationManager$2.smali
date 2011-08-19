.class Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationManager$2;
.super Ljava/lang/Object;
.source "DeviceAuthorizationManager.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationManager;->authorize()Lcom/newspaperdirect/pressreader/android/core/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activationNumber:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationManager$2;->val$activationNumber:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationManager$2;->val$activationNumber:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iput-object p1, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 49
    return-void
.end method
