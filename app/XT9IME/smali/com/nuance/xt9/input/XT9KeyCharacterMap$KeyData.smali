.class public Lcom/nuance/xt9/input/XT9KeyCharacterMap$KeyData;
.super Ljava/lang/Object;
.source "XT9KeyCharacterMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/XT9KeyCharacterMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyData"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final META_LENGTH:I = 0x4


# instance fields
.field public displayLabel:C

.field public meta:[C

.field public number:C


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    const/4 v0, 0x4

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/xt9/input/XT9KeyCharacterMap$KeyData;->meta:[C

    return-void
.end method
