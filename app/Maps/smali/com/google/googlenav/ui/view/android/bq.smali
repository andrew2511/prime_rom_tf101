.class Lcom/google/googlenav/ui/view/android/bq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/util/Linkify$TransformFilter;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/aO;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aO;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bq;->b:Lcom/google/googlenav/ui/view/android/aO;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bq;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bq;->a:Ljava/lang/String;

    return-object v0
.end method
