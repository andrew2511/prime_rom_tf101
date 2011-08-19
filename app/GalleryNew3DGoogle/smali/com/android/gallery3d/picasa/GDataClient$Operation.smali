.class public final Lcom/android/gallery3d/picasa/GDataClient$Operation;
.super Ljava/lang/Object;
.source "GDataClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/picasa/GDataClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Operation"
.end annotation


# instance fields
.field public inOutEtag:Ljava/lang/String;

.field public outBody:Ljava/io/InputStream;

.field public outStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
