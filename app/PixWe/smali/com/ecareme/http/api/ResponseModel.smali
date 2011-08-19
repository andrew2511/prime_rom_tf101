.class public abstract Lcom/ecareme/http/api/ResponseModel;
.super Ljava/lang/Object;
.source "ResponseModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract toDocument()Lorg/jdom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/http/api/APIException;
        }
    .end annotation
.end method
