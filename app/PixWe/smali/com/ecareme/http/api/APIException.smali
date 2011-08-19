.class public Lcom/ecareme/http/api/APIException;
.super Ljava/lang/Exception;
.source "APIException.java"


# static fields
.field public static final AUTHENTICATION_FAIL:I = 0x2

.field public static final AUTHORIZATION_FAIL:I = 0x5

.field public static final DATABASE_ERROR:I = 0xb

.field public static final ENCRYPTION_ERROR:I = 0xd

.field public static final GENERAL_ERROR:I = 0x3e7

.field public static final KEY_APIEXCEPTION:Ljava/lang/String; = "key.apiexception"

.field public static final PAYLOAD_IS_NOT_VALIDATE:I = 0x3

.field public static final XMLCONTENT_ERROR:I = 0xc


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 22
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/ecareme/http/api/APIException;->errorCode:I

    .line 27
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 22
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/ecareme/http/api/APIException;->errorCode:I

    .line 47
    iput p1, p0, Lcom/ecareme/http/api/APIException;->errorCode:I

    .line 48
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 58
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/ecareme/http/api/APIException;->errorCode:I

    .line 59
    iput p1, p0, Lcom/ecareme/http/api/APIException;->errorCode:I

    .line 60
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "errorCode"
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 64
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/ecareme/http/api/APIException;->errorCode:I

    .line 65
    iput p1, p0, Lcom/ecareme/http/api/APIException;->errorCode:I

    .line 66
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1
    .parameter "errorCode"
    .parameter "cause"

    .prologue
    .line 52
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 22
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/ecareme/http/api/APIException;->errorCode:I

    .line 53
    iput p1, p0, Lcom/ecareme/http/api/APIException;->errorCode:I

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/ecareme/http/api/APIException;->errorCode:I

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/ecareme/http/api/APIException;->errorCode:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "cause"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 22
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/ecareme/http/api/APIException;->errorCode:I

    .line 32
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/ecareme/http/api/APIException;->errorCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error Code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ecareme/http/api/APIException;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setErrorCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 75
    iput p1, p0, Lcom/ecareme/http/api/APIException;->errorCode:I

    .line 76
    return-void
.end method
