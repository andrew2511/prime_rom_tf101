.class public final Lcom/ecareme/asuswebstorage/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/asuswebstorage/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Gallery:[I

.field public static final Gallery_android_galleryItemBackground:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 660
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 661
    const v2, 0x101004c

    aput v2, v0, v1

    .line 660
    sput-object v0, Lcom/ecareme/asuswebstorage/R$styleable;->Gallery:[I

    .line 649
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
