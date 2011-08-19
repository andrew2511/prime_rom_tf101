.class public Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;
.super Ljava/lang/Exception;
.source "HttpRequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x70143b945bd10e4dL


# instance fields
.field private mResponseErrorCode:I

.field private mResponseErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "responseErrorCode"
    .parameter "responseErrorMessage"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 35
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;->mResponseErrorCode:I

    .line 36
    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;->mResponseErrorMessage:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;->mResponseErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseErrorCode()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;->mResponseErrorCode:I

    return v0
.end method
