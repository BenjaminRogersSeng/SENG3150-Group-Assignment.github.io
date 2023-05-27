<div class="card bg-light text-dark">
    <div class="card-body text-center">
        <#if location.name == "Mystery Flight">
            <a class="destination" href="/flight/mystery">
        <#else>
            <a class="destination" href="/home/destination">
        </#if>
            <img
                src=${location.image}
                class="rounded img-fluid"
                alt="" />
            <h4>
                ${location.name}
            </h4>
            ${location.description}
        </a>
    </div>
</div>