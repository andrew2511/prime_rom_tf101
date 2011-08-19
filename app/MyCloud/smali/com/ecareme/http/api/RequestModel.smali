.class public abstract Lcom/ecareme/http/api/RequestModel;
.super Ljava/lang/Object;
.source "RequestModel.java"


# instance fields
.field protected doc:Lorg/jdom/Document;


# direct methods
.method public constructor <init>(Lorg/jdom/Document;)V
    .locals 0
    .parameter "doc"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ecareme/http/api/RequestModel;->doc:Lorg/jdom/Document;

    .line 17
    return-void
.end method
