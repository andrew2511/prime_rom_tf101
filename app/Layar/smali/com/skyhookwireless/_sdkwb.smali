.class public interface abstract Lcom/skyhookwireless/_sdkwb;
.super Ljava/lang/Object;


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/skyhookwireless/_sdkwb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/skyhookwireless/_sdkxb;

    invoke-direct {v0}, Lcom/skyhookwireless/_sdkxb;-><init>()V

    sput-object v0, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public abstract _sdka()Lcom/skyhookwireless/_sdkyb;
.end method
