.class public interface abstract Lcom/skyhookwireless/_sdkr;
.super Ljava/lang/Object;


# static fields
.field public static final CELL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/skyhookwireless/_sdkr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/skyhookwireless/_sdks;

    invoke-direct {v0}, Lcom/skyhookwireless/_sdks;-><init>()V

    sput-object v0, Lcom/skyhookwireless/_sdkr;->CELL_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public abstract _sdka()Lcom/skyhookwireless/_sdkq;
.end method
