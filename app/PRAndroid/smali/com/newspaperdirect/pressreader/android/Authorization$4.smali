.class Lcom/newspaperdirect/pressreader/android/Authorization$4;
.super Ljava/lang/Object;
.source "Authorization.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$OnAuthorization;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Authorization;->authorize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/Authorization;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Authorization;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Authorization$4;->this$0:Lcom/newspaperdirect/pressreader/android/Authorization;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorization()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Authorization$4;->this$0:Lcom/newspaperdirect/pressreader/android/Authorization;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Authorization;->access$4(Lcom/newspaperdirect/pressreader/android/Authorization;)V

    .line 136
    return-void
.end method
