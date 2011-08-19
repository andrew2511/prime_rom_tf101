.class public abstract LC/g;
.super Ljava/lang/Object;


# instance fields
.field public final c:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LC/g;->c:J

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 3

    const-string v0, "yyyy-MM-ddTkk:mm:ss"

    iget-wide v1, p0, LC/g;->c:J

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Ljava/io/Writer;)V
.end method
