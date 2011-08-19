.class public final Lcom/google/android/finsky/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final HorizontalStrip:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1146
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f01

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/R$styleable;->HorizontalStrip:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
