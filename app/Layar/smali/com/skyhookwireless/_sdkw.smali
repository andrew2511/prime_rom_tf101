.class public interface abstract Lcom/skyhookwireless/_sdkw;
.super Ljava/lang/Object;


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/skyhookwireless/_sdkw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/skyhookwireless/_sdkx;

    invoke-direct {v0}, Lcom/skyhookwireless/_sdkx;-><init>()V

    sput-object v0, Lcom/skyhookwireless/_sdkw;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public abstract getAge()Lcom/skyhookwireless/_sdkub;
.end method
