.class Lcom/android/certinstaller/CertInstaller$OnExtractionDoneAction;
.super Ljava/lang/Object;
.source "CertInstaller.java"

# interfaces
.implements Lcom/android/certinstaller/CertInstaller$MyAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/certinstaller/CertInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnExtractionDoneAction"
.end annotation


# instance fields
.field private mSuccess:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .parameter "success"

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-boolean p1, p0, Lcom/android/certinstaller/CertInstaller$OnExtractionDoneAction;->mSuccess:Z

    .line 437
    return-void
.end method


# virtual methods
.method public run(Lcom/android/certinstaller/CertInstaller;)V
    .locals 1
    .parameter "host"

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/android/certinstaller/CertInstaller$OnExtractionDoneAction;->mSuccess:Z

    invoke-virtual {p1, v0}, Lcom/android/certinstaller/CertInstaller;->onExtractionDone(Z)V

    .line 441
    return-void
.end method
